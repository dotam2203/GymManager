package com.gym.ui.adapter

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.gym.databinding.ItemLoaigtBinding
import com.gym.model.LoaiGtModel

/**
 * Author: tamdt35@fpt.com.vn
 * Date:  08/07/2022
 */
class LoaiGtAdapter(val _itemClick: OnItemClick): RecyclerView.Adapter<LoaiGtAdapter.ViewHolder>(){
    var loaiGTs = listOf<LoaiGtModel>()
    inner class ViewHolder(val binding: ItemLoaigtBinding): RecyclerView.ViewHolder(binding.root) {
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        val view = ItemLoaigtBinding.inflate(LayoutInflater.from(parent.context),parent,false)
        return ViewHolder(view);
    }

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        with(holder){
            binding.apply {
                loaiGT = loaiGTs[position]
                imbEdit.setOnClickListener {
                    _itemClick.itemClickEdit(loaiGTs[position])
                }
                imbDelete.setOnClickListener {
                    _itemClick.itemClickDelete(loaiGTs[position].idLoaiGT)
                }
            }
        }
    }
    override fun getItemCount(): Int {
        return loaiGTs.size
    }
    fun updateData(loaiGTs: List<LoaiGtModel>){
        this.loaiGTs = loaiGTs
        notifyDataSetChanged()
    }
    interface OnItemClick{
        fun itemClickEdit(loaiGtModel: LoaiGtModel)
        fun itemClickDelete(id: Int)
    }
}