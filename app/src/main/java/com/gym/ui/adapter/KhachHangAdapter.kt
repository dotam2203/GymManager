package com.gym.ui.adapter

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.gym.databinding.ItemKhachhangBinding
import com.gym.model.KhachHangModel

/**
 * Author: tamdt35@fpt.com.vn
 * Date:  19/07/2022
 */
class KhachHangAdapter(private val _itemClick: OnItemClick) : RecyclerView.Adapter<KhachHangAdapter.ViewHolder>() {
    var khachHangs = listOf<KhachHangModel>()
    inner class ViewHolder(val binding: ItemKhachhangBinding): RecyclerView.ViewHolder(binding.root){
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        val view = ItemKhachhangBinding.inflate(LayoutInflater.from(parent.context),parent,false)
        return ViewHolder(view)
    }

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        with(holder){
            binding.apply {
                khachHang = khachHangs[position]
                imbEdit.setOnClickListener {
                    _itemClick.itemClickEdit(khachHangs[position])
                }
                imbDelete.setOnClickListener {
                    _itemClick.itemClickDelete(khachHangs[position].maKH)
                }
                itemClickKH.setOnClickListener{
                    _itemClick.itemLongClick(khachHangs[position])
                }
            }
        }
    }
    override fun getItemCount(): Int {
        return khachHangs.size
    }
    fun updateData(khachHangs: List<KhachHangModel>){
        this.khachHangs = khachHangs
        notifyDataSetChanged()
    }
    interface OnItemClick{
        fun itemClickEdit(khachHangModel: KhachHangModel)
        fun itemClickDelete(maKH: String)
        fun itemLongClick(khachHangModel: KhachHangModel)
    }
}