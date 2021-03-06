package com.gym.ui.adapter

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.gym.databinding.ItemGoitapBinding
import com.gym.model.GiaGtModel
import com.gym.model.GoiTapModel

/**
 * Author: tamdt35@fpt.com.vn
 * Date:  08/07/2022
 */
class GoiTapAdapter(val _itemClick: OnItemClick): RecyclerView.Adapter<GoiTapAdapter.ViewHolder>() {
    var goiTaps = listOf<GoiTapModel>()
    inner class ViewHolder(val binding: ItemGoitapBinding): RecyclerView.ViewHolder(binding.root){
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        val view = ItemGoitapBinding.inflate(LayoutInflater.from(parent.context),parent,false)
        return ViewHolder(view)
    }

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        with(holder){
            binding.apply {
                goiTap = goiTaps[position]
                imbEdit.setOnClickListener {
                    _itemClick.itemClickEdit(goiTaps[position])
                }
                imbDelete.setOnClickListener {
                    _itemClick.itemClickDelete(goiTaps[position].maGT)
                }
            }
        }
    }
    override fun getItemCount(): Int {
        return goiTaps.size
    }
    fun updateData(goiTaps: List<GoiTapModel>){
        this.goiTaps = goiTaps
        notifyDataSetChanged()
    }
    interface OnItemClick{
        fun itemClickEdit(goiTapModel: GoiTapModel)
        fun itemClickDelete(maGT: String)
    }
}